/*
 * CudaMemory.cu
 *
 *  Created on: Aug 17, 2014
 *      Author: Pietro Incardona
 */

/**
 * \brief This class create instructions to allocate, and destroy GPU memory
 * 
 * This class create instructions to allocate, destroy, resize GPU buffer, 
 * eventually if direct, comunication is not supported, it can instruction
 * to create an Host Pinned memory.
 * 
 * Usage:
 * 
 * TO DO
 * 
 * This class in general is used by OpenFPM_data project to basically
 * record all the operation made and generate a set of instructions
 * 
 */

class CudaMemory : public memory
{
	//! 
	
	//! device memory
	void * dm;
	
	//! host memory
	void * hm;
	
	//! allocate memory
	virtual bool allocate(size_t sz);
	//! destroy memory
	virtual void destroy();
	//! copy memory
	virtual bool copy(memory m);
	//! the the size of the allocated memory
	virtual size_t size();
	//! resize the momory allocated
	virtual bool resize(size_t sz);
	
};

